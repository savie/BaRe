.class public final Ljv6$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljv6$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getSimpleDateFormat(Ljv6$a;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 1
    invoke-direct {p0}, Ljv6$a;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 0

    .line 1
    invoke-static {}, Ljv6;->access$getSimpleDateFormat$delegate$cp()Los4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    return-object p0
.end method
