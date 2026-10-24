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

    new-instance v4, Ljava/net/URL;
    const-string v5, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/profiles?on_conflict=user_id"
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    const-string v5, "POST"
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v5, 0x2710
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v5, 0x1
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v5, "apikey"
    const-string v6, "sb_publishable_qTDGXWoCW79yAL0jyO27mw_MPJY_Ryi"
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;
    const-string v6, "Bearer "
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;->token:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5

    const-string v6, "Authorization"
    invoke-virtual {v4, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"
    const-string v6, "application/json"
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Prefer"
    const-string v6, "resolution=merge-duplicates,return=minimal"
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v5

    const-string v6, "UTF-8"
    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v5

    const-string v6, "BareSupabase"
    new-instance v7, Ljava/lang/StringBuilder;
    const-string v0, "Profile metadata sync HTTP "
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :return_void
    return-void

    :catch_0
    move-exception v0
    const-string v1, "BareSupabase"
    const-string v2, "Profile metadata sync failed (network or auth configuration)"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method