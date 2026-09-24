.class public final synthetic Lsp3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Llh6;

.field public final synthetic b:Lqp3;

.field public final synthetic c:Ldy7;

.field public final synthetic d:Ltp3;


# direct methods
.method public synthetic constructor <init>(Llh6;Lqp3;Ldy7;Ltp3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsp3;->a:Llh6;

    .line 5
    .line 6
    iput-object p2, p0, Lsp3;->b:Lqp3;

    .line 7
    .line 8
    iput-object p3, p0, Lsp3;->c:Ldy7;

    .line 9
    .line 10
    iput-object p4, p0, Lsp3;->d:Ltp3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lsp3;->d:Ltp3;

    .line 2
    .line 3
    iget-object v0, v0, Ltp3;->g:Lkm5;

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
    iget-object v2, p0, Lsp3;->a:Llh6;

    .line 13
    .line 14
    iget-object v3, v2, Llh6;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ne v5, v4, :cond_2

    .line 30
    .line 31
    :goto_0
    return-object v1

    .line 32
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object v5, p0, Lsp3;->b:Lqp3;

    .line 37
    .line 38
    invoke-virtual {v5}, Lqp3;->d()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-static {v4, v6}, Lorg/swiftapps/swiftbackup/common/Const;->q(II)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iput-object p1, v2, Llh6;->a:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object p0, p0, Lsp3;->c:Ldy7;

    .line 49
    .line 50
    invoke-virtual {p0, v4}, Ldy7;->b(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Lqp3;->d()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {v0, p0}, Lkm5;->u(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/4 p1, 0x0

    .line 69
    :goto_2
    invoke-virtual {v0, p0, p1}, Lkm5;->v(IZ)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method
