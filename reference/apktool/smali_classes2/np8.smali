.class public final Lnp8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgk6;


# instance fields
.field public final synthetic a:Lpp8;


# direct methods
.method public constructor <init>(Lpp8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnp8;->a:Lpp8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lik6;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lnp8;->a:Lpp8;

    .line 2
    .line 3
    iget-object p0, p0, Lpp8;->s:Lex6;

    .line 4
    .line 5
    iget-object v0, p1, Lik6;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lhk6;

    .line 8
    .line 9
    sget-object v1, Lmp8;->a:[I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lq;->j()V

    .line 21
    .line 22
    .line 23
    :pswitch_0
    return-void

    .line 24
    :pswitch_1
    sget-object p1, Lgp8;->a:Lgp8;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object p1, p1, Lik6;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ljava/util/List;

    .line 33
    .line 34
    new-instance v0, Lxg;

    .line 35
    .line 36
    const/16 v1, 0xb

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lxg;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 v0, 0x32

    .line 46
    .line 47
    invoke-static {p1, v0}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lip8;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Lip8;-><init>(Ljava/util/ArrayList;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_3
    sget-object p1, Lhp8;->a:Lhp8;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
