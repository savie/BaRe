.class public final Lwj8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:B

.field public final b:B

.field public final c:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\b(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\b"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-byte p1, p0, Lwj8;->a:B

    .line 5
    .line 6
    iput-byte p2, p0, Lwj8;->b:B

    .line 7
    .line 8
    iput-byte p3, p0, Lwj8;->c:B

    .line 9
    .line 10
    return-void
.end method

.method public static a(I)B
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x7f

    .line 4
    .line 5
    if-gt p0, v0, :cond_0

    .line 6
    .line 7
    int-to-byte p0, p0

    .line 8
    return p0

    .line 9
    :cond_0
    const-string p0, "Version component out of supported range (0-127)"

    .line 10
    .line 11
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0
.end method


# virtual methods
.method public final b(III)I
    .locals 2

    .line 1
    iget-byte v0, p0, Lwj8;->a:B

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iget-byte v1, p0, Lwj8;->b:B

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x8

    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    iget-byte p0, p0, Lwj8;->c:B

    .line 11
    .line 12
    or-int/2addr p0, v0

    .line 13
    shl-int/lit8 p1, p1, 0x10

    .line 14
    .line 15
    shl-int/lit8 p2, p2, 0x8

    .line 16
    .line 17
    or-int/2addr p1, p2

    .line 18
    or-int/2addr p1, p3

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lwj8;

    .line 2
    .line 3
    iget-byte v0, p1, Lwj8;->a:B

    .line 4
    .line 5
    iget-byte v1, p1, Lwj8;->b:B

    .line 6
    .line 7
    iget-byte p1, p1, Lwj8;->c:B

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lwj8;->b(III)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-class v2, Lwj8;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lwj8;

    .line 18
    .line 19
    iget-byte v2, p0, Lwj8;->a:B

    .line 20
    .line 21
    iget-byte v3, p1, Lwj8;->a:B

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-byte v2, p0, Lwj8;->b:B

    .line 26
    .line 27
    iget-byte v3, p1, Lwj8;->b:B

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-byte p0, p0, Lwj8;->c:B

    .line 32
    .line 33
    iget-byte p1, p1, Lwj8;->c:B

    .line 34
    .line 35
    if-ne p0, p1, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-byte v0, p0, Lwj8;->a:B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-byte v1, p0, Lwj8;->b:B

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-byte p0, p0, Lwj8;->c:B

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    iget-byte v0, p0, Lwj8;->a:B

    .line 4
    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    iget-byte v1, p0, Lwj8;->b:B

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    iget-byte p0, p0, Lwj8;->c:B

    .line 12
    .line 13
    and-int/lit16 p0, p0, 0xff

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "."

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
