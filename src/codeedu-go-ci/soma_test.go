package main

import "testing"

func TestSoma(t *testing.T) {
	result := soma(5, 5)
	expected := 10

	if result != expected {
		t.Errorf("expected '%d', result '%d'", expected, result)
	}

	
}
