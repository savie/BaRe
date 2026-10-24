.class public final Lorg/swiftapps/swiftbackup/backend/SupabaseLoginSuccessListener;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync;->syncCurrentUser()V
    return-void
.end method
