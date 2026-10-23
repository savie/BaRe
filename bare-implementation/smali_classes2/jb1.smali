.class public final synthetic Ljb1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p3, p0, Ljb1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljb1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ljb1;->c:Ljava/io/Serializable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Ljb1;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Ljb1;->c:Ljava/io/Serializable;

    .line 4
    .line 5
    iget-object p0, p0, Ljb1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 11
    .line 12
    check-cast p2, Liu;

    .line 13
    .line 14
    sget p1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p1, Lzn4;->a:Lzn4;

    .line 24
    .line 25
    new-instance p1, Ly2;

    .line 26
    .line 27
    const/16 v0, 0xc

    .line 28
    .line 29
    invoke-direct {p1, v0, p0, p2}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    check-cast p0, Lmt3;

    .line 37
    .line 38
    check-cast p2, Llh6;

    .line 39
    .line 40
    iget-object p1, p2, Llh6;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
