.class public abstract La2;
.super Lz0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(Lm2;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz0;-><init>(Lm2;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, La2;->b:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .line 1
    iget-object v0, p0, Lz0;->a:Lm2;

    .line 2
    .line 3
    iget-object v0, v0, Lm2;->d:Ld0;

    .line 4
    .line 5
    sget-object v1, Ld0;->c:Ld0;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lm2;->m:Ll2;

    .line 10
    .line 11
    new-instance v1, Lnh4;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v1, v2}, Lnh4;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Lv0;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v1, v3}, Lv0;-><init>(Lnh4;I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, La2;->b:[B

    .line 27
    .line 28
    invoke-virtual {v2, v0, p0}, Lv0;->C(Lm2;[B)Lz0;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lw1;

    .line 33
    .line 34
    invoke-virtual {p0}, Lw1;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
