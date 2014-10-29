package main

import(
	"log"
	"os/exec"
)

func main(){
	out, err := exec.Command("cat", "/etc/os-release").Output()
	if err != nil {
		log.Fatal(err)
	}

	log.Printf("System Info:\n\n%s\n", out)
}

