package main

import (
	"net/http"
	"net/http/httputil"
	"os"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func main() {
	listenString := ":8080"

	// Echo instance
	e := echo.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	// Routes
	e.Any("*", requestDumper)

	if port := os.Getenv("PORT"); port != "" {
		listenString = ":" + port
	}

	e.Logger.Fatal(e.Start(listenString))
}

func requestDumper(c echo.Context) error {
	dump, err := httputil.DumpRequest(c.Request(), true)
	if err != nil {
		c.JSON(http.StatusInternalServerError, err)
		return err
	}
	return c.String(http.StatusOK, string(dump))
}
