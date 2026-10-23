.class public final synthetic Lzr8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Las8;

.field public final synthetic b:Lau8;


# direct methods
.method public synthetic constructor <init>(Las8;Lau8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzr8;->a:Las8;

    .line 5
    .line 6
    iput-object p2, p0, Lzr8;->b:Lau8;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lzr8;->a:Las8;

    .line 13
    .line 14
    iget-object v0, v0, Las8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 15
    .line 16
    iget-object p0, p0, Lzr8;->b:Lau8;

    .line 17
    .line 18
    check-cast p0, Lzt8;

    .line 19
    .line 20
    iget-object p0, p0, Lzt8;->a:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {p0}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, p0, p2, v1, p1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->c0(Ljava/util/ArrayList;IZLandroid/view/View;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lbe8;->a:Lbe8;

    .line 31
    .line 32
    return-object p0
.end method
