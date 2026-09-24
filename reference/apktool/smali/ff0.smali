.class public final Lff0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lx23;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lff0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lff0;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lw35;

    .line 7
    .line 8
    invoke-direct {p0}, Lw35;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_0
    new-instance p0, Lef0;

    .line 13
    .line 14
    new-instance v0, Leu3;

    .line 15
    .line 16
    new-instance v1, Lj;

    .line 17
    .line 18
    invoke-direct {v1}, Lj;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lro;

    .line 25
    .line 26
    const/16 v3, 0x10

    .line 27
    .line 28
    invoke-direct {v2, v3}, Lro;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Leu3;->a:Lj;

    .line 32
    .line 33
    iput-object v2, v0, Leu3;->b:Lro;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lgf0;-><init>(Ld;)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
