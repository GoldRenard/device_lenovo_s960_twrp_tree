RBOOTIMG := device/lenovo/s960/rbootimg

$(INSTALLED_RECOVERYIMAGE_TARGET): $(RBOOTIMG) $(recovery_ramdisk) $(recovery_kernel)
	@echo ----- Making recovery image ------
	$(RBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) --mtk_force --mtk_ramdisk_name RECOVERY --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)

$(INSTALLED_BOOTIMAGE_TARGET): $(RBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(RBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) --mtk_force --mtk_ramdisk_name KERNEL --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)