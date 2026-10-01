package com.bare.storage;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/**
 * Android storage-volume adapter shaped from Reference yn7/zn7.
 *
 * Enumeration and read/write state are local device concerns. Root/privileged
 * fallback and migration remain outside this adapter.
 */
public final class AndroidStorageInventory implements StorageInventory {
    private final Context context;

    public AndroidStorageInventory(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override
    public List<StorageVolumeInfo> listVolumes() {
        StorageManager manager =
                (StorageManager) context.getSystemService(StorageManager.class);
        if (manager == null) return new ArrayList<>();

        List<StorageVolumeInfo> result = new ArrayList<>();
        UsbDevice usb = findStorageUsbDevice();

        for (StorageVolume volume : manager.getStorageVolumes()) {
            File directory = volume.getDirectory();
            if (directory == null) continue;

            String rootPath = directory.getPath();
            boolean usb = usbMatchesVolume(volume, usb);
            String displayName = volume.isRemovable()
                    ? safeDescription(volume)
                    : "Internal storage";

            result.add(new StorageVolumeInfo(
                    rootPath,
                    rootPath,
                    displayName,
                    volume.isRemovable(),
                    usb,
                    directory.canRead(),
                    directory.canWrite()));
        }

        return result;
    }

    private String safeDescription(StorageVolume volume) {
        CharSequence description = volume.getDescription(context);
        if (description == null || description.length() == 0) {
            return "External storage";
        }
        return description.toString();
    }

    private UsbDevice findStorageUsbDevice() {
        UsbManager manager = (UsbManager) context.getSystemService(UsbManager.class);
        if (manager == null) return null;

        HashMap<String, UsbDevice> devices = manager.getDeviceList();
        for (UsbDevice device : devices.values()) {
            int count = device.getInterfaceCount();
            for (int i = 0; i < count; i++) {
                if (device.getInterface(i).getInterfaceClass() == 8) {
                    return device;
                }
            }
        }
        return null;
    }

    private boolean usbMatchesVolume(StorageVolume volume, UsbDevice usb) {
        if (usb == null) {
            CharSequence description = volume.getDescription(context);
            return description != null
                    && description.toString().toLowerCase(Locale.US).contains("usb");
        }

        String manufacturer = usb.getManufacturerName();
        CharSequence description = volume.getDescription(context);
        return manufacturer != null
                && description != null
                && description.toString().toLowerCase(Locale.US)
                        .contains(manufacturer.toLowerCase(Locale.US));
    }
}
