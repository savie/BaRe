.class public final Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static currentUid()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    move-result-object v0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;
    move-result-object v0
    if-eqz v0, :uid_unavailable

    iget-object v1, v0, Lp49;->b:Lw1a;
    if-eqz v1, :uid_unavailable
    iget-object v0, v1, Lw1a;->a:Ljava/lang/String;
    return-object v0

    :uid_unavailable
    const/4 v0, 0x0
    return-object v0
.end method

.method private static currentToken()Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    move-result-object v0
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->b(Z)Lcom/google/android/gms/tasks/Task;
    move-result-object v0

    const-wide/16 v1, 0x2710
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ldx3;
    if-eqz v0, :token_unavailable
    iget-object v0, v0, Ldx3;->a:Ljava/lang/String;
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :token_failed

    :token_failed
    move-exception v0
    :token_unavailable
    const/4 v0, 0x0
    return-object v0
.end method

.method private static failure(Ljava/lang/String;)Laf3;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    invoke-static {v0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;
    move-result-object v0
    new-instance v1, Lye3;
    invoke-direct {v1, v0}, Lye3;-><init>(Lwc2;)V
    return-object v1
.end method

.method private static error(Ljava/lang/Throwable;)Laf3;
    .locals 2

    invoke-static {p0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;
    move-result-object v0
    new-instance v1, Lye3;
    invoke-direct {v1, v0}, Lye3;-><init>(Lwc2;)V
    return-object v1
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Laf3;
    .locals 8

    :try_start_0
    new-instance v0, Ljava/net/URL;
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    const/16 v1, 0x2710
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "apikey"
    const-string v2, "sb_publishable_qTDGXWoCW79yAL0jyO27mw_MPJY_Ryi"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Authorization"
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "Bearer "
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"
    const-string v2, "application/json"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "Content-Type"
    const-string v2, "application/json; charset=utf-8"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "Prefer"
    const-string v2, "resolution=merge-duplicates,return=minimal"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :request_no_body
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v2
    const-string v1, "UTF-8"
    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v1
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :request_no_body
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v1
    const/16 v2, 0xc8
    if-lt v1, v2, :request_http_error
    const/16 v2, 0x12c
    if-ge v1, v2, :request_http_error

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    sget-object v0, Lze3;->b:Lze3;
    return-object v0

    :request_http_error
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "Supabase metadata request returned HTTP "
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->failure(Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :request_failed

    :request_failed
    move-exception v0
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->error(Ljava/lang/Throwable;)Laf3;
    move-result-object v0
    return-object v0
.end method

.method private static responseText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Ljava/net/URL;
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0
    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    const/16 v1, 0x2710
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    const-string v1, "apikey"
    const-string v2, "sb_publishable_qTDGXWoCW79yAL0jyO27mw_MPJY_Ryi"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Authorization"
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "Bearer "
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "Accept"
    const-string v2, "application/json"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v1
    const/16 v2, 0xc8
    if-lt v1, v2, :response_empty
    const/16 v2, 0x12c
    if-ge v1, v2, :response_empty

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object v2
    new-instance v3, Ljava/io/InputStreamReader;
    const-string v4, "UTF-8"
    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    new-instance v4, Ljava/io/BufferedReader;
    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    return-object v5

    :response_empty
    const-string v2, "BΛR☰Backend"
    new-instance v3, Ljava/lang/StringBuilder;
    const-string v4, "Supabase GET returned HTTP "
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    const/4 v0, 0x0
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :response_failed

    :response_failed
    move-exception v0
    const-string v1, "BΛR☰Backend"
    const-string v2, "Supabase folder metadata read failed."
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    const/4 v0, 0x0
    return-object v0
.end method

.method public static writeFolderItem(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Laf3;
    .locals 10

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :folder_item_null

    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z
    move-result v0
    if-eqz v0, :folder_item_null

    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentUid()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :folder_item_no_uid
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentToken()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :folder_item_no_token

    invoke-static {}, Lw14;->c()Lcom/google/gson/a;
    move-result-object v4
    invoke-virtual {v4, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    const-string v0, "user_id"
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "source_key"
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "name"
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "config"
    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;
    const-string v0, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/folder_configs?on_conflict=user_id,source_key"
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    const-string v0, "POST"
    invoke-static {v9, v0, v3, v8}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :folder_item_no_uid
    const-string v0, "Folder metadata sync requires a signed-in Firebase user."
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->failure(Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :folder_item_no_token
    const-string v0, "Firebase ID token unavailable; folder metadata was not synced."
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->failure(Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :folder_item_null
    const/4 v0, 0x0
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :folder_item_failed

    :folder_item_failed
    move-exception v0
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->error(Ljava/lang/Throwable;)Laf3;
    move-result-object v0
    return-object v0
.end method

.method public static writeFolderMetadata(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)Laf3;
    .locals 10

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :folder_meta_null

    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->isValid()Z
    move-result v0
    if-eqz v0, :folder_meta_null
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasValidCloudLinks()Z
    move-result v0
    if-eqz v0, :folder_meta_null
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBackups()Z
    move-result v0
    if-eqz v0, :folder_meta_null

    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    move-result-object v1
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->writeFolderItem(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Laf3;
    move-result-object v2
    instance-of v0, v2, Lze3;
    if-eqz v0, :folder_meta_return_write_item_result

    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentUid()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :folder_meta_no_uid
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentToken()Ljava/lang/String;
    move-result-object v4
    if-eqz v4, :folder_meta_no_token

    invoke-static {}, Lw14;->c()Lcom/google/gson/a;
    move-result-object v5
    invoke-virtual {v5, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    new-instance v7, Lorg/json/JSONObject;
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/json/JSONObject;
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    const-string v0, "user_id"
    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "backup_kind"
    const-string v1, "folder"
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "display_name"
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    move-result-object v1
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "storage_kind"
    const-string v1, "cloud"
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "object_key"
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    move-result-object v1
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "status"
    const-string v1, "complete"
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "size_bytes"
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getTotalSize()J
    move-result-wide v1
    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    const-string v0, "metadata"
    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v9
    const-string v0, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/backup_records?on_conflict=user_id,backup_kind,object_key"
    const-string v1, "POST"
    invoke-static {v0, v1, v4, v9}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :folder_meta_return_write_item_result
    move-object v0, v2
    return-object v0

    :folder_meta_no_uid
    const-string v0, "Folder metadata sync requires a signed-in Firebase user."
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->failure(Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :folder_meta_no_token
    const-string v0, "Firebase ID token unavailable; folder metadata was not synced."
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->failure(Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :folder_meta_null
    const/4 v0, 0x0
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :folder_meta_failed

    :folder_meta_failed
    move-exception v0
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->error(Ljava/lang/Throwable;)Laf3;
    move-result-object v0
    return-object v0
.end method

.method public static fetchFolderMetadata(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;
    .locals 10

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :folder_fetch_worker
    goto :folder_fetch_null

    :folder_fetch_worker
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentUid()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :folder_fetch_null
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentToken()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :folder_fetch_null

    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;
    move-result-object v4
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;
    const-string v0, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/backup_records?select=metadata&user_id=eq."
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "&backup_kind=eq.folder&object_key=eq."
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "&limit=1"
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0

    invoke-static {v0, v3}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->responseText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :folder_fetch_null

    new-instance v1, Lorg/json/JSONArray;
    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    move-result v0
    if-lez v0, :folder_fetch_null
    const/4 v0, 0x0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    move-result-object v0
    const-string v1, "metadata"
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    move-result-object v0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;
    move-result-object v1
    const-class v2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :folder_fetch_failed

    :folder_fetch_failed
    move-exception v0
    const-string v1, "BΛR☰Backend"
    const-string v2, "Supabase folder metadata could not be loaded; local metadata remains authoritative."
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :folder_fetch_null
    const/4 v0, 0x0
    return-object v0
.end method

.method public static removeFolderMetadata(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V
    .locals 10

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :folder_remove_worker
    return-void

    :folder_remove_worker
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentUid()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :folder_remove_no_user
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentToken()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :folder_remove_no_token

    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    move-result-object v4
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;
    move-result-object v4
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    const/4 v6, 0x0

    new-instance v5, Ljava/lang/StringBuilder;
    const-string v0, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/backup_records?user_id=eq."
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "&backup_kind=eq.folder&object_key=eq."
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "DELETE"
    invoke-static {v0, v1, v3, v6}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Laf3;
    move-result-object v0
    instance-of v1, v0, Lze3;
    if-eqz v1, :folder_remove_failed

    new-instance v5, Ljava/lang/StringBuilder;
    const-string v0, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/folder_configs?user_id=eq."
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "&source_key=eq."
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "DELETE"
    invoke-static {v0, v1, v3, v6}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Laf3;
    move-result-object v0
    instance-of v1, v0, Lze3;
    if-eqz v1, :folder_remove_failed
    return-void

    :folder_remove_failed
    check-cast v0, Lye3;
    iget-object v0, v0, Lye3;->b:Lwc2;
    invoke-virtual {v0}, Lwc2;->c()Lxc2;
    move-result-object v0
    throw v0

    :folder_remove_no_user
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Folder metadata deletion requires a signed-in Firebase user."
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0

    :folder_remove_no_token
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Firebase ID token unavailable; folder metadata deletion failed."
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method


# RTDB migration bridge: persist one known feature-root payload in BΛR☰ Supabase.
# Call from a worker thread only. The database constraint allow-lists path_key.
.method public static writeUserPayload(Ljava/lang/String;Ljava/lang/String;)Laf3;
    .locals 8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :payload_main_thread

    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentUid()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :payload_no_uid
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentToken()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :payload_no_token

    new-instance v4, Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    const-string v0, "user_id"
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "path_key"
    invoke-virtual {v4, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "payload"
    new-instance v1, Lorg/json/JSONTokener;
    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    move-result-object v1
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v5

    const-string v6, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/user_realtime_data?on_conflict=user_id,path_key"
    const-string v7, "POST"
    invoke-static {v6, v7, v3, v5}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :payload_main_thread
    const-string v0, "User payload sync must run off the main thread."
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->failure(Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :payload_no_uid
    const-string v0, "User payload sync requires a signed-in Firebase user."
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->failure(Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0

    :payload_no_token
    const-string v0, "Firebase ID token unavailable; user payload was not synced."
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->failure(Ljava/lang/String;)Laf3;
    move-result-object v0
    return-object v0
.end method

# Returns the JSON payload text, or null when no synced payload is available.
.method public static readUserPayload(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :payload_read_worker
    const/4 v0, 0x0
    return-object v0

    :payload_read_worker
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentUid()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :payload_read_null
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->currentToken()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :payload_read_null

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    const-string v0, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/user_realtime_data?select=payload&user_id=eq."
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "&path_key=eq."
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "&limit=1"
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0, v3}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->responseText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :payload_read_null

    new-instance v1, Lorg/json/JSONArray;
    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    move-result v0
    if-lez v0, :payload_read_null
    const/4 v0, 0x0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    move-result-object v0
    const-string v1, "payload"
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0

    :payload_read_null
    const/4 v0, 0x0
    return-object v0
.end method

