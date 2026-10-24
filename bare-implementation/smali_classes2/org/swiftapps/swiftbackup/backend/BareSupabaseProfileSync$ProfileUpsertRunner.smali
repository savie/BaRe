.class public final Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;


# instance fields
.field private final user:Lp49;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lp49;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;->user:Lp49;
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;->user:Lp49;
    iget-object v1, v0, Lp49;->b:Lw1a;
    iget-object v2, v1, Lw1a;->a:Ljava/lang/String;

    if-eqz v2, :return_void

    new-instance v3, Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "user_id"
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    move-result-object v3

    iget-object v4, v1, Lw1a;->f:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :skip_email

    const-string v5, "email"
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    move-result-object v3

    :skip_email
    iget-object v4, v1, Lw1a;->c:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :skip_display_name

    const-string v5, "display_name"
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    move-result-object v3

    :skip_display_name
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v3

    const-string v4, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/profiles?on_conflict=user_id"
    invoke-direct {p0, v4, v3}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;->upsert(Ljava/lang/String;Ljava/lang/String;)I
    move-result v5

    const-string v6, "BareSupabase"
    new-instance v7, Ljava/lang/StringBuilder;
    const-string v0, "Profile metadata sync HTTP "
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xc8
    if-lt v5, v6, :return_void
    const/16 v6, 0x12c
    if-ge v5, v6, :return_void

    new-instance v3, Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "user_id"
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    move-result-object v3

    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync;->getOrCreateDeviceKey()Ljava/lang/String;
    move-result-object v4
    const-string v5, "device_key"
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    move-result-object v3

    const-string v4, "display_name"
    const-string v5, "Android device"
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    move-result-object v3

    const-string v4, "platform"
    const-string v5, "android"
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    move-result-object v3

    const-string v4, "app_version"
    const-string v5, "1.0.2"
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v3

    const-string v4, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/devices?on_conflict=user_id,device_key"
    invoke-direct {p0, v4, v3}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;->upsert(Ljava/lang/String;Ljava/lang/String;)I
    move-result v5

    const-string v6, "BareSupabase"
    new-instance v7, Ljava/lang/StringBuilder;
    const-string v0, "Device metadata sync HTTP "
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :return_void
    return-void

    :catch_0
    move-exception v0
    const-string v1, "BareSupabase"
    const-string v2, "Metadata sync failed (network or auth configuration)"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method

.method private final upsert(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Ljava/net/URL;
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x2710
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v1, "apikey"
    const-string v2, "sb_publishable_qTDGXWoCW79yAL0jyO27mw_MPJY_Ryi"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;
    const-string v2, "Bearer "
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;->token:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    const-string v2, "Authorization"
    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"
    const-string v2, "application/json"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Prefer"
    const-string v2, "resolution=merge-duplicates,return=minimal"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v1

    const-string v2, "UTF-8"
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return v1
.end method