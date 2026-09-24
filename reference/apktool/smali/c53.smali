.class public final Lc53;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq43;


# static fields
.field public static final a:Lc53;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc53;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc53;->a:Lc53;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    rem-int/lit8 p2, p2, 0x64

    .line 7
    .line 8
    invoke-virtual {p0, p2, p1}, Lc53;->b(ILjava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 1
    rem-int/lit8 p1, p1, 0x64

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method
