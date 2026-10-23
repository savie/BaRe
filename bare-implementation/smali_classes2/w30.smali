.class public final Lw30;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Los4;


# direct methods
.method public synthetic constructor <init>(Los4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw30;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw30;->b:Los4;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lw30;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lw30;->b:Los4;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lzl8;

    .line 14
    .line 15
    instance-of v0, p0, Lw24;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    check-cast v1, Lw24;

    .line 21
    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Lw24;->getDefaultViewModelCreationExtras()Lej5;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object p0, Lm22;->b:Lm22;

    .line 30
    .line 31
    :goto_0
    return-object p0

    .line 32
    :pswitch_0
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lzl8;

    .line 37
    .line 38
    instance-of v0, p0, Lw24;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move-object v1, p0

    .line 43
    check-cast v1, Lw24;

    .line 44
    .line 45
    :cond_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-interface {v1}, Lw24;->getDefaultViewModelCreationExtras()Lej5;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    sget-object p0, Lm22;->b:Lm22;

    .line 53
    .line 54
    :goto_1
    return-object p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
