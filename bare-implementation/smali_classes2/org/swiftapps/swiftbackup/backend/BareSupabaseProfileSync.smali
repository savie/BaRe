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