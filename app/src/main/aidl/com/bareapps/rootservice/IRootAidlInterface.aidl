package com.bareapps.rootservice;

import android.content.pm.PackageInfo;
import android.os.ParcelFileDescriptor;
import com.bareapps.rootservice.SbaArchiveInfo;
import com.bareapps.rootservice.SbaArchiveInfoPage;
import com.bareapps.rootservice.SbaCreateRequest;
import com.bareapps.rootservice.SbaExtractRequest;
import com.bareapps.rootservice.SbaTarExtractRequest;
import com.bareapps.rootservice.SbaTarEntryPage;
import com.bareapps.rootservice.SbaOperationResult;
import com.bareapps.rootservice.ISbaOperationCallback;

interface IRootAidlInterface {
    int getPid();
    int getUid();
    String executeShellCommand(String command);
    PackageInfo getPackageArchiveInfo(String path, int flags);
    ParcelFileDescriptor getParcelFileDescriptor(String path, int mode);
    String getSbaNativeVersion();
    boolean isSbaAegis256Available();
    boolean isSbaFile(String path);
    SbaArchiveInfo readSbaInfo(String path);
    SbaArchiveInfoPage readSbaInfoPage(String path, int start, int pageSize);
    SbaTarEntryPage listSbaTarEntries(String path, String entryName, in char[] password, int start, int pageSize);
    SbaTarEntryPage listTarEntries(String path, int start, int pageSize);
    long createSba(in SbaCreateRequest request, ISbaOperationCallback callback);
    long extractSba(in SbaExtractRequest request, ISbaOperationCallback callback);
    long extractTar(in SbaTarExtractRequest request, ISbaOperationCallback callback);
    boolean cancelSba(long operationId);
    SbaOperationResult getSbaResult(long operationId);
}
