.class public final Lku1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Llu1;


# instance fields
.field public final a:Landroid/view/ContentInfo$Builder;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lju1;->b(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lku1;->a:Landroid/view/ContentInfo$Builder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lku1;->a:Landroid/view/ContentInfo$Builder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lku1;->a:Landroid/view/ContentInfo$Builder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final build()Lqu1;
    .locals 2

    .line 1
    new-instance v0, Lqu1;

    .line 2
    .line 3
    new-instance v1, Lnu1;

    .line 4
    .line 5
    iget-object p0, p0, Lku1;->a:Landroid/view/ContentInfo$Builder;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v1, p0}, Lnu1;-><init>(Landroid/view/ContentInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lqu1;-><init>(Lou1;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lku1;->a:Landroid/view/ContentInfo$Builder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
