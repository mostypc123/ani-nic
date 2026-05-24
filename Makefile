PACSTRAP := pacstrap
PACKAGES := base linux linux-firmware dhcpcd networkmanager vim grub
BUILD_DIR := build
ROOTFS := archlive/airootfs/root.tar.zst
.PHONY: clean strap-packages make-iso

all: clean make-iso

clean:
	rm -rf $(BUILD_DIR)
	rm -f ani-nic.iso
	rm -f $(ROOTFS)

strap-packages:
	mkdir -p $(BUILD_DIR)
	$(PACSTRAP) $(BUILD_DIR) $(PACKAGES)
	mkdir -p archlive
	tar -I zstd -cf $(ROOTFS) $(BUILD_DIR)
	rm -rf $(BUILD_DIR)

make-iso: strap-packages
	mkarchiso -v archlive/

