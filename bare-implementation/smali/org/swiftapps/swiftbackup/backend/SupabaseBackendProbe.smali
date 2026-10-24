.class public final Lorg/swiftapps/swiftbackup/backend/SupabaseBackendProbe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final userId:Ljava/lang/String;
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/backend/SupabaseBackendProbe;->userId:Ljava/lang/String;
    return-void
.end method

.method public static probe()V
    .locals 4

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;
    move-result-object v1
    if-eqz v1, :no_firebase_user

    iget-object v2, v1, Lp49;->b:Lw1a;
    if-eqz v2, :no_firebase_user

    iget-object v2, v2, Lw1a;->a:Ljava/lang/String;
    if-eqz v2, :no_firebase_user

    new-instance v3, Lorg/swiftapps/swiftbackup/backend/SupabaseBackendProbe;
    invoke-direct {v3, v2}, Lorg/swiftapps/swiftbackup/backend/SupabaseBackendProbe;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->b(Z)Lcom/google/android/gms/tasks/Task;
    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    move-result-object v0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    return-void

    :no_firebase_user
    const-string v0, "BΛR☰Backend"
    const-string v1, "Supabase profile sync skipped; Firebase user is unavailable."
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ldx3;
    iget-object v0, p1, Ldx3;->a:Ljava/lang/String;
    if-eqz v0, :missing_token

    iput-object v0, p0, Lorg/swiftapps/swiftbackup/backend/SupabaseBackendProbe;->token:Ljava/lang/String;

    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    return-void

    :missing_token
    const-string v0, "BΛR☰Backend"
    const-string v1, "Firebase returned an empty ID token; Supabase profile sync skipped."
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "BΛR☰Backend"
    const-string v1, "Could not obtain a Firebase ID token for Supabase profile sync."
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method

.method public run()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/net/URL;
    const-string v1, "https://fbiazqbrkwovzrirnzpb.supabase.co/rest/v1/profiles?on_conflict=user_id"
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0
    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    const/16 v1, 0x1388
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "apikey"
    const-string v2, "sb_publishable_qTDGXWoCW79yAL0jyO27mw_MPJY_Ryi"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Authorization"
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "Bearer "
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/backend/SupabaseBackendProbe;->token:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"
    const-string v2, "application/json; charset=utf-8"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "Accept"
    const-string v2, "application/json"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "Prefer"
    const-string v2, "resolution=merge-duplicates,return=minimal"
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    const-string v3, "user_id"
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/backend/SupabaseBackendProbe;->userId:Ljava/lang/String;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "UTF-8"
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v4
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v1
    const/16 v2, 0xc8
    if-ne v1, v2, :check_created
    goto :profile_sync_ok

    :check_created
    const/16 v2, 0xc9
    if-ne v1, v2, :check_no_content
    goto :profile_sync_ok

    :check_no_content
    const/16 v2, 0xcc
    if-ne v1, v2, :profile_sync_rejected
    goto :profile_sync_ok

    :profile_sync_rejected
    const-string v2, "BΛR☰Backend"
    const-string v3, "Supabase rejected profile metadata sync; check JWT trust and RLS configuration."
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    goto :disconnect

    :profile_sync_ok
    const-string v2, "BΛR☰Backend"
    const-string v3, "Supabase accepted Firebase identity; profile metadata sync succeeded."
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :disconnect
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0
    const-string v1, "BΛR☰Backend"
    const-string v2, "Supabase profile metadata sync failed."
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
