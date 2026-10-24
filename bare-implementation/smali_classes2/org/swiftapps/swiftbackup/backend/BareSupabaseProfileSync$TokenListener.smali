.class public final Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$TokenListener;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final user:Lp49;


# direct methods
.method public constructor <init>(Lp49;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$TokenListener;->user:Lp49;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z
    move-result v0

    if-eqz v0, :return_void

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;
    move-result-object v0

    check-cast v0, Ldx3;

    iget-object v1, v0, Ldx3;->a:Ljava/lang/String;

    if-eqz v1, :return_void

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    move-result v2

    if-lez v2, :return_void

    new-instance v2, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;

    iget-object v3, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$TokenListener;->user:Lp49;

    invoke-direct {v2, v3, v1}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseProfileSync$ProfileUpsertRunner;-><init>(Lp49;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :return_void
    return-void
.end method