.class public final Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;

.field private static final MAX_FULL_PAYLOAD_BYTES:I = 0x400000

.field private static final MAX_PACKAGE_PAYLOAD_BYTES:I = 0x80000

.field private static final PACKAGE_CLOSE_TAG:Ljava/lang/String; = "</package>"

.field private static final PREFIX:Ljava/lang/String; = "SB_NOTIFICATION_POLICY"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final applyRestore([BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->getNotificationService()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, [B

    .line 10
    .line 11
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 12
    .line 13
    filled-new-array {v1, v2}, [Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "applyRestore"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final backup(Lorg/swiftapps/swiftbackup/apptasks/notifications/b;)I
    .locals 6

    .line 1
    iget v0, p1, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;->b:I

    .line 2
    .line 3
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;->d:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->getBackupPayload(I)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v2, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    const/high16 v4, 0x400000

    .line 15
    .line 16
    if-gt v2, v4, :cond_2

    .line 17
    .line 18
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v0, p1}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->createPackagePayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-nez p0, :cond_0

    .line 56
    .line 57
    const-string p0, "SB_NOTIFICATION_POLICY:MISSING"

    .line 58
    .line 59
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return v3

    .line 65
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    array-length p1, p0

    .line 73
    const/high16 v0, 0x80000

    .line 74
    .line 75
    if-gt p1, v0, :cond_1

    .line 76
    .line 77
    invoke-static {v1, p0}, Lnc3;->W(Ljava/io/File;[B)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x1

    .line 81
    invoke-virtual {v1, p0, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 82
    .line 83
    .line 84
    const-string p0, "SB_NOTIFICATION_POLICY:OK"

    .line 85
    .line 86
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return v3

    .line 92
    :cond_1
    array-length p0, p0

    .line 93
    const-string p1, "Package notification payload too large: "

    .line 94
    .line 95
    invoke-static {p0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return v3

    .line 103
    :cond_2
    array-length p0, v0

    .line 104
    const-string p1, "Notification backup payload too large: "

    .line 105
    .line 106
    invoke-static {p0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return v3

    .line 114
    :cond_3
    const-string p0, "Empty notification backup payload"

    .line 115
    .line 116
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return v3
.end method

.method private final createPackagePayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "<notification-policy"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const-string v0, "ranking"

    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->extractOpeningTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "/>"

    .line 21
    .line 22
    invoke-static {v0, v3, v1}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->extractPackageBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    :goto_0
    return-object v2

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p2, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?>\n<notification-policy version=\"1\">\n"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 p2, 0xa

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, "\n</ranking>\n</notification-policy>\n"

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_2
    const-string p0, "Ranking tag is self-closing"

    .line 72
    .line 73
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_3
    const-string p0, "Missing notification-policy root"

    .line 78
    .line 79
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v2
.end method

.method private final escapeXmlAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "&"

    .line 2
    .line 3
    const-string v0, "&amp;"

    .line 4
    .line 5
    invoke-static {p1, p0, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "\""

    .line 10
    .line 11
    const-string v0, "&quot;"

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "<"

    .line 18
    .line 19
    const-string v0, "&lt;"

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, ">"

    .line 26
    .line 27
    const-string v0, "&gt;"

    .line 28
    .line 29
    invoke-static {p0, p1, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private final extractOpeningTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string p0, "<"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-static {p1, p0, v0, v0, v1}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x0

    .line 14
    if-gez p0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/16 v1, 0x3e

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-static {v1, p0, v2, p1}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-le v1, p0, :cond_1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const-string p0, "Malformed <"

    .line 34
    .line 35
    const-string p1, "> tag"

    .line 36
    .line 37
    invoke-static {p0, p2, p1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method private final extractPackageBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->escapeXmlAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "<package name=\""

    .line 6
    .line 7
    const-string v1, "\""

    .line 8
    .line 9
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x6

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, p0, v1, v1, v0}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x0

    .line 20
    if-gez p0, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const/16 v2, 0x3e

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    invoke-static {v2, p0, v3, p1}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-le v2, p0, :cond_3

    .line 31
    .line 32
    add-int/lit8 v4, v2, -0x1

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/16 v5, 0x2f

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 50
    .line 51
    const-string v5, "</package>"

    .line 52
    .line 53
    invoke-static {p1, v5, v4, v1, v3}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-le v1, v2, :cond_2

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0xa

    .line 60
    .line 61
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    const-string p0, "Missing package close tag for "

    .line 67
    .line 68
    invoke-static {p0, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    const-string p0, "Malformed package tag for "

    .line 77
    .line 78
    invoke-static {p0, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method private final getBackupPayload(I)[B
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->getNotificationService()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "getBackupPayload"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, [B

    .line 37
    .line 38
    return-object p0
.end method

.method private final getNotificationService()Ljava/lang/Object;
    .locals 4

    .line 1
    const-string p0, "android.os.ServiceManager"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-class v0, Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getService"

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "notification"

    .line 20
    .line 21
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    instance-of v0, p0, Landroid/os/IBinder;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    check-cast p0, Landroid/os/IBinder;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object p0, v1

    .line 38
    :goto_0
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const-string v0, "android.app.INotificationManager$Stub"

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-class v2, Landroid/os/IBinder;

    .line 47
    .line 48
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "asInterface"

    .line 53
    .line 54
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_1
    const-string p0, "Notification service proxy unavailable"

    .line 70
    .line 71
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_2
    const-string p0, "Notification service unavailable"

    .line 76
    .line 77
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v1
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/apptasks/notifications/a;->a([Ljava/lang/String;)Lorg/swiftapps/swiftbackup/apptasks/notifications/b;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;->a:Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy$a;

    .line 12
    .line 13
    sget-object v3, Lorg/swiftapps/swiftbackup/apptasks/notifications/c;->a:[I

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    aget v2, v3, v2

    .line 20
    .line 21
    if-eq v2, v1, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->restore(Lorg/swiftapps/swiftbackup/apptasks/notifications/b;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance p0, Lmn5;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_1
    invoke-direct {v0, p0}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->backup(Lorg/swiftapps/swiftbackup/apptasks/notifications/b;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    new-instance v0, Lbn6;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    move-object p0, v0

    .line 54
    :goto_2
    invoke-static {p0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    instance-of p0, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 61
    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    move-object p0, v0

    .line 65
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    const-string v0, ""

    .line 92
    .line 93
    :cond_3
    const-string v2, ": "

    .line 94
    .line 95
    invoke-static {p0, v2, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string v0, "SB_NOTIFICATION_POLICY:ERROR ["

    .line 100
    .line 101
    const-string v2, "]"

    .line 102
    .line 103
    invoke-static {v0, p0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :cond_4
    check-cast p0, Ljava/lang/Number;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 123
    .line 124
    .line 125
    new-instance p0, Ljava/lang/RuntimeException;

    .line 126
    .line 127
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 128
    .line 129
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method private final restore(Lorg/swiftapps/swiftbackup/apptasks/notifications/b;)I
    .locals 8

    .line 1
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;->d:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p1, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;->d:Ljava/io/File;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    const-wide/16 v6, 0x1

    .line 19
    .line 20
    cmp-long v0, v6, v4

    .line 21
    .line 22
    if-gtz v0, :cond_1

    .line 23
    .line 24
    const-wide/32 v6, 0x80001

    .line 25
    .line 26
    .line 27
    cmp-long v0, v4, v6

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    invoke-static {v2}, Lnc3;->S(Ljava/io/File;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0, v1}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->createPackagePayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget p1, p1, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;->b:I

    .line 80
    .line 81
    invoke-direct {p0, v0, p1}, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;->applyRestore([BI)V

    .line 82
    .line 83
    .line 84
    const-string p0, "SB_NOTIFICATION_POLICY:OK"

    .line 85
    .line 86
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return v3

    .line 92
    :cond_0
    const-string p0, "Payload does not contain package "

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return v3

    .line 102
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 103
    .line 104
    .line 105
    move-result-wide p0

    .line 106
    const-string v0, "Invalid notification payload size: "

    .line 107
    .line 108
    invoke-static {p0, p1, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return v3

    .line 116
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p1, "Payload file not found: "

    .line 121
    .line 122
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return v3
.end method
