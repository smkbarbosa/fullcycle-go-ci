package main

import "fmt"

func main() {
	resultado := soma(5, 5)
	fmt.Println(resultado)
}

func soma(x, y int) int {
	return x + y
}