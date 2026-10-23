.class public final Lo97$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lo97$a;",
        "Lo97;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfw0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private B(Lyy0;)V
    .locals 0

    .line 1
    const-string p0, "CORS configuration"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic x(Lyy0;Lo97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo97$a;->z(Lyy0;Lo97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic z(Lyy0;Lo97;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lo97;->i(Lo97;Lyy0;)Lyy0;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lo97;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lo97;->h(Lo97;)Lyy0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lo97$a;->B(Lyy0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lo97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo97$a;->A(Lo97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lo97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo97$a;->A(Lo97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y(Lyy0;)Lo97$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lo97$a;->B(Lyy0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Lb10;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, p1, v2}, Lb10;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method
