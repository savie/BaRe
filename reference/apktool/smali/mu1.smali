.class public final Lmu1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Llu1;


# instance fields
.field public a:Landroid/content/ClipData;

.field public b:I

.field public c:I

.field public d:Landroid/net/Uri;

.field public e:Landroid/os/Bundle;


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmu1;->d:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmu1;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public final build()Lqu1;
    .locals 2

    .line 1
    new-instance v0, Lqu1;

    .line 2
    .line 3
    new-instance v1, Lpu1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lpu1;-><init>(Lmu1;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lqu1;-><init>(Lou1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmu1;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method
