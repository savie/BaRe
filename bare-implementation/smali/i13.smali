.class public final synthetic Li13;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Li13;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Li13;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p0, Ln84;->a:I

    .line 7
    .line 8
    const/16 p0, 0x2000

    .line 9
    .line 10
    new-array p0, p0, [B

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_0
    new-instance p0, Lyd8;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    new-instance p0, Lf60;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    iput-object v0, p0, Lf60;->d:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/util/zip/CRC32;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lf60;->f:Ljava/util/zip/CRC32;

    .line 34
    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
