.class public final La53;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq43;


# static fields
.field public static final a:La53;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La53;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La53;->a:La53;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    add-int/lit8 p0, p0, 0x1

    .line 7
    .line 8
    invoke-static {p0, p1}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method
