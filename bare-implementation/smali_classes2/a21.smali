.class public final synthetic La21;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lz11;

.field public final synthetic b:Llh6;

.field public final synthetic c:Lb21;

.field public final synthetic d:Ldy7;


# direct methods
.method public synthetic constructor <init>(Lz11;Llh6;Lb21;Ldy7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La21;->a:Lz11;

    .line 5
    .line 6
    iput-object p2, p0, La21;->b:Llh6;

    .line 7
    .line 8
    iput-object p3, p0, La21;->c:Lb21;

    .line 9
    .line 10
    iput-object p4, p0, La21;->d:Ldy7;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, La21;->c:Lb21;

    .line 2
    .line 3
    iget-object v0, v0, Lb21;->f:Lkm5;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    sget-object v1, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, La21;->a:Lz11;

    .line 13
    .line 14
    iget-object v2, v2, Lz11;->n:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, La21;->b:Llh6;

    .line 21
    .line 22
    iget-object v4, v3, Llh6;->a:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-ne v6, v5, :cond_2

    .line 38
    .line 39
    :goto_0
    return-object v1

    .line 40
    :cond_2
    :goto_1
    iput-object p1, v3, Llh6;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lkm5;->u(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/4 v4, 0x0

    .line 54
    :goto_2
    invoke-virtual {v0, v3, v4}, Lkm5;->v(IZ)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    mul-int/lit8 p1, p1, 0x64

    .line 62
    .line 63
    div-int/2addr p1, v2

    .line 64
    iget-object p0, p0, La21;->d:Ldy7;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ldy7;->b(I)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method
