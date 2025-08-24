ifeq ($(PRODUCT_PLATFORM),tama)

LOCAL_PATH := $(call my-dir)

$(shell mkdir -p $(TARGET_OUT_ODM))

$(shell mkdir -p $(TARGET_OUT_ODM)/bin)
$(foreach p,$(wildcard $(LOCAL_PATH)/bin/*),$(shell cp -r $(LOCAL_PATH)/bin/$(notdir $(p)) $(TARGET_OUT_ODM)/bin/. > /dev/null))

$(shell mkdir -p $(TARGET_OUT_ODM)/firmware)
$(foreach p,$(wildcard $(LOCAL_PATH)/firmware/*),$(shell cp -r $(LOCAL_PATH)/firmware/$(notdir $(p)) $(TARGET_OUT_ODM)/firmware/. > /dev/null))

$(shell mkdir -p $(TARGET_OUT_ODM)/lib)
$(foreach p,$(wildcard $(LOCAL_PATH)/lib/*),$(shell cp -r $(LOCAL_PATH)/lib/$(notdir $(p)) $(TARGET_OUT_ODM)/lib/. > /dev/null))

$(shell mkdir -p $(TARGET_OUT_ODM)/lib64)
$(foreach p,$(wildcard $(LOCAL_PATH)/lib64/*),$(shell cp -r $(LOCAL_PATH)/lib64/$(notdir $(p)) $(TARGET_OUT_ODM)/lib64/. > /dev/null))

$(shell mkdir -p $(TARGET_OUT_ODM)/system_ext)
$(foreach p,$(wildcard $(LOCAL_PATH)/system_ext/*),$(shell cp -r $(LOCAL_PATH)/system_ext/$(notdir $(p)) $(TARGET_OUT_ODM)/system_ext/. > /dev/null))

endif
