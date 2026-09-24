.class public final synthetic Lxk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lwk;


# direct methods
.method public synthetic constructor <init>(ILwk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lxk;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lxk;->b:Lwk;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lxk;->a:I

    .line 8
    .line 9
    invoke-static {p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->q(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/16 v0, 0x64

    .line 14
    .line 15
    if-le p1, v0, :cond_0

    .line 16
    .line 17
    move p1, v0

    .line 18
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lxk;->b:Lwk;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lwk;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object p0, Lbe8;->a:Lbe8;

    .line 28
    .line 29
    return-object p0
.end method
