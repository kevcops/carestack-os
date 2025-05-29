default:
	build

build:
	bluebuild build

build-iso:
	bluebuild build-iso

clean:
	rm -rf artifacts *.iso *.qcow2
