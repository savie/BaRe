.class public final Ljr0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# instance fields
.field public final a:Lql6;

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lql6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljr0;->b:Landroid/content/res/Resources;

    .line 5
    .line 6
    iput-object p2, p0, Ljr0;->a:Lql6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ljr0;->a:Lql6;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lql6;->a(Ljava/lang/Object;Lou5;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 1

    .line 1
    iget-object v0, p0, Ljr0;->a:Lql6;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lql6;->b(Ljava/lang/Object;IILou5;)Lll6;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p2, Lqs4;

    .line 12
    .line 13
    iget-object p0, p0, Ljr0;->b:Landroid/content/res/Resources;

    .line 14
    .line 15
    invoke-direct {p2, p0, p1}, Lqs4;-><init>(Landroid/content/res/Resources;Lll6;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method
