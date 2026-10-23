.class public final Lu43;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls43;


# instance fields
.field public final a:I

.field public final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lu43;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lu43;->b:[Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    iget v0, p0, Lu43;->a:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object p0, p0, Lu43;->b:[Ljava/lang/String;

    .line 8
    .line 9
    aget-object p0, p0, p2

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()I
    .locals 3

    .line 1
    iget-object p0, p0, Lu43;->b:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    aget-object v2, p0, v0

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-le v2, v1, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method
