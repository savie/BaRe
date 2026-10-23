.class public final Lbe4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldh5;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbe4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbe4;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public y(Lai5;)Lch5;
    .locals 3

    .line 1
    iget v0, p0, Lbe4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lbe4;->b:Landroid/content/Context;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lbm6;

    .line 9
    .line 10
    const-class v1, Ljava/lang/Integer;

    .line 11
    .line 12
    const-class v2, Ljava/io/InputStream;

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Lai5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p0, p1}, Lbm6;-><init>(Landroid/content/Context;Lch5;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    new-instance p1, Ls95;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ls95;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
