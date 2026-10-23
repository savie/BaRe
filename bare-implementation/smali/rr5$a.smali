.class public abstract Lrr5$a;
.super Lvr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lrr5$a<",
        "TB;TA;>;A:",
        "Lrr5;",
        ">",
        "Lvr5$a<",
        "TB;TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvr5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Lg87$a;Lrr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrr5$a;->G(Lg87$a;Lrr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G(Lg87$a;Lrr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lrr5;->h:Lg87$a;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public H(Lg87$a;)Lrr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg87$a;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ly00;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p1, v2}, Ly00;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
