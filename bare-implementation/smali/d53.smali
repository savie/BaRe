.class public final Ld53;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq43;


# static fields
.field public static final a:Ld53;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld53;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld53;->a:Ld53;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    add-int/lit8 p2, p2, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, p2, p1}, Ld53;->b(ILjava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 1
    const/16 p0, 0xa

    .line 2
    .line 3
    if-ge p1, p0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x30

    .line 6
    .line 7
    int-to-char p0, p1

    .line 8
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p1, p2}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method
