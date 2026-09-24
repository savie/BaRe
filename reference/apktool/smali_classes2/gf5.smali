.class public final synthetic Lgf5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lff5;

.field public final synthetic b:Lif5;

.field public final synthetic c:Ldy7;

.field public final synthetic d:Llh6;


# direct methods
.method public synthetic constructor <init>(Lff5;Lif5;Ldy7;Llh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgf5;->a:Lff5;

    .line 5
    .line 6
    iput-object p2, p0, Lgf5;->b:Lif5;

    .line 7
    .line 8
    iput-object p3, p0, Lgf5;->c:Ldy7;

    .line 9
    .line 10
    iput-object p4, p0, Lgf5;->d:Llh6;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lgf5;->b:Lif5;

    .line 2
    .line 3
    iget-object v0, v0, Lif5;->f:Lkm5;

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
    iget-object v2, p0, Lgf5;->a:Lff5;

    .line 13
    .line 14
    iget v2, v2, Lff5;->n:I

    .line 15
    .line 16
    iget-object v3, p0, Lgf5;->c:Ldy7;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    if-gtz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Lkm5;->u(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ldy7;->b(I)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    iget-object p0, p0, Lgf5;->d:Llh6;

    .line 30
    .line 31
    iget-object v6, p0, Llh6;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v6, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-ne v8, v7, :cond_3

    .line 47
    .line 48
    :goto_0
    return-object v1

    .line 49
    :cond_3
    :goto_1
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lkm5;->u(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    move v4, v5

    .line 61
    :cond_4
    invoke-virtual {v0, p0, v4}, Lkm5;->v(IZ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    mul-int/lit8 p0, p0, 0x64

    .line 69
    .line 70
    div-int/2addr p0, v2

    .line 71
    invoke-virtual {v3, p0}, Ldy7;->b(I)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method
