.class public final Lty3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfa6;
.implements Ljs1;


# static fields
.field public static volatile b:Lty3;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lty3;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lty3;->a:Ljava/lang/Object;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lty3;->a:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    invoke-virtual {p1, p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lbq1;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lty3;->a:Ljava/lang/Object;

    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lty3;->a:Ljava/lang/Object;

    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lty3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public a(Lwv2;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-interface {p1}, Lwv2;->getEncoded()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public b([B)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c([B[B)[B
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lty3;->d([B[B)[B

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    invoke-static {}, Lus2;->v()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lty3;->d([B[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    invoke-static {}, Lus2;->v()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lty3;->d([B[B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    return-object p0

    .line 25
    :catch_2
    move-exception p0

    .line 26
    throw p0
.end method

.method public d([B[B)[B
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x1c

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    const-string v0, "AES/GCM/NoPadding"

    .line 7
    .line 8
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljavax/crypto/SecretKey;

    .line 15
    .line 16
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 17
    .line 18
    const/16 v2, 0x80

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    invoke-direct {v1, v2, p1, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-virtual {v0, v2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 28
    .line 29
    .line 30
    array-length p0, p2

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 35
    .line 36
    .line 37
    :goto_0
    array-length p0, p1

    .line 38
    sub-int/2addr p0, v4

    .line 39
    invoke-virtual {v0, p1, v4, p0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    const-string p0, "Ciphertext too short"

    .line 48
    .line 49
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public e([B[B)[B
    .locals 2

    .line 1
    const-string v0, "AES/GCM/NoPadding"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljavax/crypto/SecretKey;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 13
    .line 14
    .line 15
    array-length p0, p2

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lx50;->u0([B[B)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public f(Lxv1;)Law1;
    .locals 3

    .line 1
    invoke-interface {p1}, Lxv1;->value()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lbq1;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Law1;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Law1;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    return-object v0

    .line 50
    :cond_2
    new-instance p0, Lyv1;

    .line 51
    .line 52
    const-string v0, "Can not instantiate %s"

    .line 53
    .line 54
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, v0, p1}, Lyv1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    ushr-int/lit8 v0, p1, 0x18

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9
    .line 10
    .line 11
    ushr-int/lit8 v0, p1, 0x10

    .line 12
    .line 13
    int-to-byte v0, v0

    .line 14
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 15
    .line 16
    .line 17
    ushr-int/lit8 v0, p1, 0x8

    .line 18
    .line 19
    int-to-byte v0, v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 21
    .line 22
    .line 23
    int-to-byte p1, p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public h()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ltb9;

    .line 4
    .line 5
    iget-object v0, p0, Ltb9;->a:Landroid/content/ContentResolver;

    .line 6
    .line 7
    iget-object v1, p0, Ltb9;->b:Landroid/net/Uri;

    .line 8
    .line 9
    sget-object v2, Ltb9;->h:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v1, 0x100

    .line 38
    .line 39
    if-gt v0, v1, :cond_2

    .line 40
    .line 41
    :try_start_1
    new-instance v1, Lk50;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ldg7;-><init>(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 48
    .line 49
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-direct {v1, v0, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public i(Ljava/io/Reader;)Lcz2;
    .locals 2

    .line 1
    new-instance v0, Lorg/xml/sax/InputSource;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Lbp0;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ltn5;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ltn5;->c(Lorg/w3c/dom/Node;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iput-object v0, p1, Lbp0;->a:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v0, Lyn5;

    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p1, Lbp0;->b:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-object p1
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lty3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
