.class public final enum Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

.field public static final enum CommunityHelper:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

.field public static final enum Translator:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;


# direct methods
.method private static final synthetic $values()[Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->Translator:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->CommunityHelper:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    const-string v1, "Translator"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->Translator:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 10
    .line 11
    new-instance v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 12
    .line 13
    const-string v1, "CommunityHelper"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->CommunityHelper:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 20
    .line 21
    invoke-static {}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->$values()[Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->$VALUES:[Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 26
    .line 27
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->$ENTRIES:Ljx2;

    .line 32
    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;
    .locals 1

    .line 1
    const-class v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->$VALUES:[Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toDisplayString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/contributor/b;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Community Helper"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "Translator"

    .line 24
    .line 25
    return-object p0
.end method
