.class public abstract Lvr5$a;
.super Lyq5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lvr5$a<",
        "TB;TA;>;A:",
        "Lvr5;",
        ">",
        "Lyq5$a<",
        "TB;TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyq5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Ljava/lang/String;Lvr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lvr5$a;->D(Ljava/lang/String;Lvr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic D(Ljava/lang/String;Lvr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lvr5;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public E(Ljava/lang/String;)Lvr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lqw4;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p1, v2}, Lqw4;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
