.class public final Lnl6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# instance fields
.field public final a:Lsl6;

.field public final b:Lnr0;


# direct methods
.method public constructor <init>(Lsl6;Lnr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnl6;->a:Lsl6;

    .line 5
    .line 6
    iput-object p2, p0, Lnl6;->b:Lnr0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    const-string p0, "android.resource"

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 1

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    iget-object v0, p0, Lnl6;->a:Lsl6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p4}, Lsl6;->c(Landroid/net/Uri;Lou5;)Lll6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    check-cast p1, Lxo2;

    .line 14
    .line 15
    invoke-virtual {p1}, Lxo2;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    iget-object p0, p0, Lnl6;->b:Lnr0;

    .line 22
    .line 23
    invoke-static {p0, p1, p2, p3}, Lsz8;->k(Lnr0;Landroid/graphics/drawable/Drawable;II)Lor0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
