.class public final Lmf6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lji3;
.implements Ldu3;


# instance fields
.field public final synthetic a:Lkm7;

.field private final job:Loh4;


# direct methods
.method public constructor <init>(Lkm7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmf6;->a:Lkm7;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lmf6;->job:Loh4;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final j(Lox1;ILpw0;)Lji3;
    .locals 1

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, -0x2

    .line 8
    if-ne p2, v0, :cond_1

    .line 9
    .line 10
    :goto_0
    sget-object v0, Lpw0;->b:Lpw0;

    .line 11
    .line 12
    if-ne p3, v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    if-eqz p2, :cond_2

    .line 16
    .line 17
    const/4 v0, -0x3

    .line 18
    if-ne p2, v0, :cond_3

    .line 19
    .line 20
    :cond_2
    sget-object v0, Lpw0;->a:Lpw0;

    .line 21
    .line 22
    if-ne p3, v0, :cond_3

    .line 23
    .line 24
    :goto_1
    return-object p0

    .line 25
    :cond_3
    new-instance v0, Lp41;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2, p3}, Lp41;-><init>(Lji3;Lox1;ILpw0;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lmf6;->a:Lkm7;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lkm7;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lyx1;->a:Lyx1;

    .line 7
    .line 8
    return-object p0
.end method
