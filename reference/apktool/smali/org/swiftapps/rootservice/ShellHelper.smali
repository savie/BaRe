.class public final Lorg/swiftapps/rootservice/ShellHelper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final INSTANCE:Lorg/swiftapps/rootservice/ShellHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/rootservice/ShellHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/swiftapps/rootservice/ShellHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/rootservice/ShellHelper;->INSTANCE:Lorg/swiftapps/rootservice/ShellHelper;

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

.method public static final getShShell()Lcom/topjohnwu/superuser/Shell;
    .locals 3

    .line 1
    new-instance v0, Lex0;

    .line 2
    .line 3
    invoke-direct {v0}, Lex0;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    iput v1, v0, Lex0;->b:I

    .line 9
    .line 10
    const-wide/16 v1, 0xa

    .line 11
    .line 12
    iput-wide v1, v0, Lex0;->a:J

    .line 13
    .line 14
    invoke-virtual {v0}, Lex0;->a()Lzd7;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method


# virtual methods
.method public final varargs sh([Ljava/lang/String;)Lod7;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length p0, p1

    .line 5
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/String;

    .line 10
    .line 11
    sget p1, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 12
    .line 13
    new-instance p1, Lvy5;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, v0}, Lvy5;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lrh4;->a([Ljava/lang/String;)Lrh4;

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public final varargs su([Ljava/lang/String;)Lod7;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length p0, p1

    .line 5
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/String;

    .line 10
    .line 11
    sget p1, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 12
    .line 13
    new-instance p1, Lvy5;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p1, v0}, Lvy5;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lrh4;->a([Ljava/lang/String;)Lrh4;

    .line 20
    .line 21
    .line 22
    return-object p1
.end method
