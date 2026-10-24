.class public final Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync;
.super Ljava/lang/Object;


# direct methods
.method public static syncCurrentUser()V
    .locals 3

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;
    move-result-object v1

    if-eqz v1, :return_void

    const/4 v2, 0x0
    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->b(Z)Lcom/google/android/gms/tasks/Task;
    move-result-object v0

    new-instance v2, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$TokenListener;
    invoke-direct {v2, v1}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$TokenListener;-><init>(Lp49;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    move-result-object v0

    :return_void
    return-void
.end method

.method public static getOrCreateDeviceKey()Ljava/lang/String;
    .locals 5

    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Lorg/swiftapps/swiftbackup/SwiftApp;
    move-result-object v0

    const-string v1, "bare_supabase_metadata"
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0

    const-string v1, "device_key"
    const/4 v2, 0x0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2

    if-eqz v2, :create_key

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    move-result v3
    if-lez v3, :create_key

    return-object v2

    :create_key
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    move-result-object v2
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v3

    const-string v4, "device_key"
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v2
.end method
