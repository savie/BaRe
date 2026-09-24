.class public final synthetic Ltj9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Las9;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltj9;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lbd9;Ljava/lang/Integer;)Lvm4;
    .locals 1

    .line 1
    iget p0, p0, Ltj9;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lmu9;

    .line 7
    .line 8
    new-instance p0, Lu00;

    .line 9
    .line 10
    invoke-direct {p0}, Lu00;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lu00;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v0, p0, Lu00;->d:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Lu00;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iget p1, p1, Lmu9;->a:I

    .line 21
    .line 22
    invoke-static {p1}, Lkm8;->n(I)Lkm8;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lu00;->c:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p2, p0, Lu00;->d:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p0}, Lu00;->k()Lhu9;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_0
    check-cast p1, Lxj9;

    .line 36
    .line 37
    const/16 p0, 0x20

    .line 38
    .line 39
    invoke-static {p0}, Lkm8;->n(I)Lkm8;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0, p2}, Lmj9;->K(Lxj9;Lkm8;Ljava/lang/Integer;)Lmj9;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
