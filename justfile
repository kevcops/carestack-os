default:
	build

build:
	rpm-ostree compose image recipes/recipe.yml

build-iso:
	rpm-ostree compose installer recipes/recipe.yml --nomacboot --output-dir=artifacts

clean:
	rm -rf artifacts *.iso *.qcow2