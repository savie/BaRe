package com.bare.settings;

import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

public final class SettingsCloudFragment extends SettingsDetailBaseFragment {
    @Override protected void build(PreferenceScreen s) {
        PreferenceCategory general=category(s,"General");
        item(general,"cloud_diagnostics","Cloud diagnostics","Diagnostics for cloud backups");
        toggle(general,"parallel_cloud_transfers","Parallel uploads/downloads","Allow parallel cloud transfers",false);

        PreferenceCategory multi=category(s,"Multithreaded downloads");
        toggle(multi,"multithreaded_downloads","Multithreaded downloads","Download using multiple connections",false);
        item(multi,"multithreaded_downloads_chunk_count","Maximum connections per download",null);

        PreferenceCategory dropbox=category(s,"Dropbox");
        item(dropbox,"dropbox_chunk_size","Upload chunk size",null);
        PreferenceCategory one=category(s,"OneDrive");
        item(one,"onedrive_chunk_size","Upload chunk size",null);
        PreferenceCategory next=category(s,"Nextcloud");
        item(next,"nextcloud_chunk_size","Upload chunk size",null);
        toggle(next,"nextcloud_force_chunked_uploads","Force chunked uploads","Force chunked uploads for Nextcloud",false);
        PreferenceCategory s3=category(s,"S3");
        item(s3,"s3_chunk_size","Upload chunk size",null);
    }
}
