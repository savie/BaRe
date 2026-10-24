.class public final Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$SignInListener;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z
    move-result v0

    if-eqz v0, :return_void

    invoke-static {}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync;->syncCurrentUser()V

    :return_void
    return-void
.end method