.class public final Lbr0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field public static final d:[B


# instance fields
.field public a:Ls33;

.field public b:I

.field public c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lbr0;->d:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x58t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbr0;->a:Ls33;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/16 p2, 0xcf

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ls33;->writeByte(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lbr0;->a:Ls33;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ls33;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/16 p2, 0xdf

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ls33;->writeByte(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lbr0;->a:Ls33;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ls33;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "Namespaces are not supported"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lbr0;->a:Ls33;

    .line 18
    .line 19
    const/16 v0, 0x2f

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ls33;->writeByte(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lbr0;->a:Ls33;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ls33;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lbr0;->a:Ls33;

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ls33;->writeUTF(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbr0;->a:Ls33;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x20

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ls33;->writeByte(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lbr0;->a:Ls33;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ls33;->writeUTF(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    or-int/lit8 p0, p1, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ls33;->writeByte(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final cdsect(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0, p1}, Lbr0;->b(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final comment(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lbr0;->b(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final docdecl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lbr0;->b(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final endDocument()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbr0;->a:Ls33;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls33;->writeByte(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lbr0;->flush()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "Namespaces are not supported"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    iget p1, p0, Lbr0;->b:I

    .line 18
    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    iput p1, p0, Lbr0;->b:I

    .line 22
    .line 23
    iget-object p1, p0, Lbr0;->a:Ls33;

    .line 24
    .line 25
    const/16 v0, 0x33

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ls33;->writeByte(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lbr0;->a:Ls33;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ls33;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public final entityRef(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0, p1}, Lbr0;->b(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lbr0;->a:Ls33;

    .line 2
    .line 3
    invoke-virtual {p0}, Ls33;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getDepth()I
    .locals 0

    .line 1
    iget p0, p0, Lbr0;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbr0;->c:[Ljava/lang/String;

    .line 2
    .line 3
    iget p0, p0, Lbr0;->b:I

    .line 4
    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    .line 7
    aget-object p0, v0, p0

    .line 8
    .line 9
    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final ignorableWhitespace(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0, p1}, Lbr0;->b(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lbr0;->b(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFeature(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lx5;->e()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lx5;->e()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    new-instance p2, Ls33;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Ls33;-><init>(Ljava/io/OutputStream;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lbr0;->a:Ls33;

    .line 26
    .line 27
    sget-object p1, Lbr0;->d:[B

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, p1, v1, v0}, Ls33;->write([BII)V

    .line 32
    .line 33
    .line 34
    iput v1, p0, Lbr0;->b:I

    .line 35
    .line 36
    const/16 p1, 0x8

    .line 37
    .line 38
    new-array p1, p1, [Ljava/lang/String;

    .line 39
    .line 40
    iput-object p1, p0, Lbr0;->c:[Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method

.method public final setOutput(Ljava/io/Writer;)V
    .locals 0

    .line 43
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lx5;->e()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-static {}, Lx5;->e()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    :goto_1
    iget-object p0, p0, Lbr0;->a:Ls33;

    .line 34
    .line 35
    const/16 p1, 0x10

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ls33;->writeByte(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "Namespaces are not supported"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    iget p1, p0, Lbr0;->b:I

    .line 18
    .line 19
    iget-object v0, p0, Lbr0;->c:[Ljava/lang/String;

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    shr-int/lit8 v1, p1, 0x1

    .line 25
    .line 26
    add-int/2addr p1, v1

    .line 27
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lbr0;->c:[Ljava/lang/String;

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lbr0;->c:[Ljava/lang/String;

    .line 36
    .line 37
    iget v0, p0, Lbr0;->b:I

    .line 38
    .line 39
    add-int/lit8 v1, v0, 0x1

    .line 40
    .line 41
    iput v1, p0, Lbr0;->b:I

    .line 42
    .line 43
    aput-object p2, p1, v0

    .line 44
    .line 45
    iget-object p1, p0, Lbr0;->a:Ls33;

    .line 46
    .line 47
    const/16 v0, 0x32

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ls33;->writeByte(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lbr0;->a:Ls33;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ls33;->b(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p0, v0, p1}, Lbr0;->b(ILjava/lang/String;)V

    return-object p0
.end method

.method public final text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1, v0}, Lbr0;->b(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
