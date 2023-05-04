package function_test

import (
	"practice-github-actions/function"
	"testing"
)

func TestFizzBuzz(t *testing.T) {
	test := map[string]struct {
		value int
		want  string
	}{
		"case1": {value: 15, want: "FizzBuzz"},
		"case2": {value: 3, want: "Fizz"},
		"case3": {value: 5, want: "Buzz"},
		"case4": {value: 1, want: "1"},
	}

	for name, tc := range test {
		t.Run(name, func(t *testing.T) {
			got := function.FizzbBuzz(tc.value)
			if got != tc.want {
				t.Errorf("want: %s, got: %s", tc.want, got)
			}
		})
	}
}
