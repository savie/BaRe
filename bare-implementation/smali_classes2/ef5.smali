.class public final Lef5;
.super Lxh8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:Lzc2;

.field public final synthetic r:Lff5;


# direct methods
.method public constructor <init>(Lzc2;Lff5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lef5;->q:Lzc2;

    .line 5
    .line 6
    iput-object p2, p0, Lef5;->r:Lff5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancelled(Lwc2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lef5;->r:Lff5;

    .line 5
    .line 6
    iget-object v0, v0, Lff5;->m:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Lwc2;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lef5;->q:Lzc2;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onDataChange(Leb2;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Lef5;->q:Lzc2;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    return-void
.end method
