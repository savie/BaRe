.class public final Lwl2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lch5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lvl2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lvl2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lwl2;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lwl2;->b:Lvl2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lbh5;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    sget-object p2, Lsl6;->b:Liu5;

    .line 4
    .line 5
    invoke-virtual {p4, p2}, Lou5;->c(Liu5;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Landroid/content/res/Resources$Theme;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p3, p0, Lwl2;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    :goto_0
    new-instance p4, Lbh5;

    .line 25
    .line 26
    new-instance v0, Lnr5;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lul2;

    .line 32
    .line 33
    iget-object p0, p0, Lwl2;->b:Lvl2;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {v1, p2, p3, p0, p1}, Lul2;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lvl2;I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p4, v0, v1}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 43
    .line 44
    .line 45
    return-object p4
.end method
