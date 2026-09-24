.class public final synthetic Li59;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic a:Lix0;

.field public synthetic b:Lh59;

.field public synthetic c:Lcom/google/android/gms/tasks/TaskCompletionSource;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li59;->a:Lix0;

    .line 2
    .line 3
    iget-object v1, p0, Li59;->b:Lh59;

    .line 4
    .line 5
    iget-object p0, p0, Li59;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    iget-object v0, v0, Lix0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lw49;

    .line 10
    .line 11
    invoke-virtual {v1, p0, v0}, Lh59;->c(Lcom/google/android/gms/tasks/TaskCompletionSource;Lw49;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
