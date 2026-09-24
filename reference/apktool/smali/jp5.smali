.class public abstract Ljp5;
.super Lcy0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final l:Ljava/util/EnumSet;


# instance fields
.field public j:Ljava/util/Set;

.field public final k:Lbw8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Llp5;->t:Llp5;

    .line 2
    .line 3
    sget-object v1, Llp5;->J:Llp5;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ljp5;->l:Ljava/util/EnumSet;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lbw8;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ljp5;->j:Ljava/util/Set;

    .line 9
    .line 10
    sget-object v0, Ljp5;->l:Ljava/util/EnumSet;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Ljp5;->k:Lbw8;

    .line 16
    .line 17
    return-void
.end method
