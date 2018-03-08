{-# LANGUAGE DeriveAnyClass #-}
module Language.PHP.Syntax where

import Prologue hiding (Text)
import Diffing.Algorithm

newtype Text a = Text ByteString
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Text where liftEq = genericLiftEq
instance Ord1 Text where liftCompare = genericLiftCompare
instance Show1 Text where liftShowsPrec = genericLiftShowsPrec

newtype VariableName a = VariableName a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 VariableName where liftEq = genericLiftEq
instance Ord1 VariableName where liftCompare = genericLiftCompare
instance Show1 VariableName where liftShowsPrec = genericLiftShowsPrec

newtype RequireOnce a = RequireOnce a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 RequireOnce where liftEq = genericLiftEq
instance Ord1 RequireOnce where liftCompare = genericLiftCompare
instance Show1 RequireOnce where liftShowsPrec = genericLiftShowsPrec

newtype Require a = Require a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Require where liftEq          = genericLiftEq
instance Ord1 Require where liftCompare    = genericLiftCompare
instance Show1 Require where liftShowsPrec = genericLiftShowsPrec

newtype Include a = Include a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Include where liftEq          = genericLiftEq
instance Ord1 Include where liftCompare    = genericLiftCompare
instance Show1 Include where liftShowsPrec = genericLiftShowsPrec

newtype IncludeOnce a = IncludeOnce a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 IncludeOnce where liftEq          = genericLiftEq
instance Ord1 IncludeOnce where liftCompare    = genericLiftCompare
instance Show1 IncludeOnce where liftShowsPrec = genericLiftShowsPrec

newtype ArrayElement a = ArrayElement a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ArrayElement where liftEq          = genericLiftEq
instance Ord1 ArrayElement where liftCompare    = genericLiftCompare
instance Show1 ArrayElement where liftShowsPrec = genericLiftShowsPrec

newtype GlobalDeclaration a = GlobalDeclaration [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 GlobalDeclaration where liftEq          = genericLiftEq
instance Ord1 GlobalDeclaration where liftCompare    = genericLiftCompare
instance Show1 GlobalDeclaration where liftShowsPrec = genericLiftShowsPrec

newtype SimpleVariable a = SimpleVariable a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 SimpleVariable where liftEq          = genericLiftEq
instance Ord1 SimpleVariable where liftCompare    = genericLiftCompare
instance Show1 SimpleVariable where liftShowsPrec = genericLiftShowsPrec


-- | TODO: Unify with TypeScript's PredefinedType
newtype CastType a = CastType { _castType :: ByteString }
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 CastType where liftEq = genericLiftEq
instance Ord1 CastType where liftCompare = genericLiftCompare
instance Show1 CastType where liftShowsPrec = genericLiftShowsPrec

newtype ErrorControl a = ErrorControl a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ErrorControl where liftEq = genericLiftEq
instance Ord1 ErrorControl where liftCompare = genericLiftCompare
instance Show1 ErrorControl where liftShowsPrec = genericLiftShowsPrec

newtype Clone a = Clone a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Clone where liftEq = genericLiftEq
instance Ord1 Clone where liftCompare = genericLiftCompare
instance Show1 Clone where liftShowsPrec = genericLiftShowsPrec

newtype ShellCommand a = ShellCommand ByteString
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ShellCommand where liftEq = genericLiftEq
instance Ord1 ShellCommand where liftCompare = genericLiftCompare
instance Show1 ShellCommand where liftShowsPrec = genericLiftShowsPrec

-- | TODO: Combine with TypeScript update expression.
newtype Update a = Update { _updateSubject :: a }
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Update where liftEq = genericLiftEq
instance Ord1 Update where liftCompare = genericLiftCompare
instance Show1 Update where liftShowsPrec = genericLiftShowsPrec

newtype NewVariable a = NewVariable [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 NewVariable where liftEq = genericLiftEq
instance Ord1 NewVariable where liftCompare = genericLiftCompare
instance Show1 NewVariable where liftShowsPrec = genericLiftShowsPrec

newtype RelativeScope a = RelativeScope ByteString
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 RelativeScope where liftEq = genericLiftEq
instance Ord1 RelativeScope where liftCompare = genericLiftCompare
instance Show1 RelativeScope where liftShowsPrec = genericLiftShowsPrec

data QualifiedName a = QualifiedName a a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 QualifiedName where liftEq = genericLiftEq
instance Ord1 QualifiedName where liftCompare = genericLiftCompare
instance Show1 QualifiedName where liftShowsPrec = genericLiftShowsPrec

data NamespaceName a = NamespaceName [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 NamespaceName where liftEq = genericLiftEq
instance Ord1 NamespaceName where liftCompare = genericLiftCompare
instance Show1 NamespaceName where liftShowsPrec = genericLiftShowsPrec

data ConstDeclaration a = ConstDeclaration [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ConstDeclaration where liftEq = genericLiftEq
instance Ord1 ConstDeclaration where liftCompare = genericLiftCompare
instance Show1 ConstDeclaration where liftShowsPrec = genericLiftShowsPrec

data ClassConstDeclaration a = ClassConstDeclaration a [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ClassConstDeclaration where liftEq = genericLiftEq
instance Ord1 ClassConstDeclaration where liftCompare = genericLiftCompare
instance Show1 ClassConstDeclaration where liftShowsPrec = genericLiftShowsPrec

data ClassInterfaceClause a = ClassInterfaceClause [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ClassInterfaceClause where liftEq = genericLiftEq
instance Ord1 ClassInterfaceClause where liftCompare = genericLiftCompare
instance Show1 ClassInterfaceClause where liftShowsPrec = genericLiftShowsPrec

data ClassBaseClause a = ClassBaseClause a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ClassBaseClause where liftEq = genericLiftEq
instance Ord1 ClassBaseClause where liftCompare = genericLiftCompare
instance Show1 ClassBaseClause where liftShowsPrec = genericLiftShowsPrec


data UseClause a = UseClause [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 UseClause where liftEq = genericLiftEq
instance Ord1 UseClause where liftCompare = genericLiftCompare
instance Show1 UseClause where liftShowsPrec = genericLiftShowsPrec

data ReturnType a = ReturnType a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ReturnType where liftEq = genericLiftEq
instance Ord1 ReturnType where liftCompare = genericLiftCompare
instance Show1 ReturnType where liftShowsPrec = genericLiftShowsPrec

data TypeDeclaration a = TypeDeclaration a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 TypeDeclaration where liftEq = genericLiftEq
instance Ord1 TypeDeclaration where liftCompare = genericLiftCompare
instance Show1 TypeDeclaration where liftShowsPrec = genericLiftShowsPrec

data BaseTypeDeclaration a = BaseTypeDeclaration a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 BaseTypeDeclaration where liftEq = genericLiftEq
instance Ord1 BaseTypeDeclaration where liftCompare = genericLiftCompare
instance Show1 BaseTypeDeclaration where liftShowsPrec = genericLiftShowsPrec

data ScalarType a = ScalarType ByteString
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ScalarType where liftEq = genericLiftEq
instance Ord1 ScalarType where liftCompare = genericLiftCompare
instance Show1 ScalarType where liftShowsPrec = genericLiftShowsPrec

data EmptyIntrinsic a = EmptyIntrinsic a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 EmptyIntrinsic where liftEq = genericLiftEq
instance Ord1 EmptyIntrinsic where liftCompare = genericLiftCompare
instance Show1 EmptyIntrinsic where liftShowsPrec = genericLiftShowsPrec

data ExitIntrinsic a = ExitIntrinsic a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ExitIntrinsic where liftEq = genericLiftEq
instance Ord1 ExitIntrinsic where liftCompare = genericLiftCompare
instance Show1 ExitIntrinsic where liftShowsPrec = genericLiftShowsPrec

data IssetIntrinsic a = IssetIntrinsic a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 IssetIntrinsic where liftEq = genericLiftEq
instance Ord1 IssetIntrinsic where liftCompare = genericLiftCompare
instance Show1 IssetIntrinsic where liftShowsPrec = genericLiftShowsPrec

data EvalIntrinsic a = EvalIntrinsic a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 EvalIntrinsic where liftEq = genericLiftEq
instance Ord1 EvalIntrinsic where liftCompare = genericLiftCompare
instance Show1 EvalIntrinsic where liftShowsPrec = genericLiftShowsPrec

data PrintIntrinsic a = PrintIntrinsic a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 PrintIntrinsic where liftEq = genericLiftEq
instance Ord1 PrintIntrinsic where liftCompare = genericLiftCompare
instance Show1 PrintIntrinsic where liftShowsPrec = genericLiftShowsPrec

data NamespaceAliasingClause a = NamespaceAliasingClause a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 NamespaceAliasingClause where liftEq = genericLiftEq
instance Ord1 NamespaceAliasingClause where liftCompare = genericLiftCompare
instance Show1 NamespaceAliasingClause where liftShowsPrec = genericLiftShowsPrec

newtype NamespaceUseDeclaration a = NamespaceUseDeclaration [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 NamespaceUseDeclaration where liftEq = genericLiftEq
instance Ord1 NamespaceUseDeclaration where liftCompare = genericLiftCompare
instance Show1 NamespaceUseDeclaration where liftShowsPrec = genericLiftShowsPrec

newtype NamespaceUseClause a = NamespaceUseClause [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 NamespaceUseClause where liftEq = genericLiftEq
instance Ord1 NamespaceUseClause where liftCompare = genericLiftCompare
instance Show1 NamespaceUseClause where liftShowsPrec = genericLiftShowsPrec

newtype NamespaceUseGroupClause a = NamespaceUseGroupClause [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 NamespaceUseGroupClause where liftEq = genericLiftEq
instance Ord1 NamespaceUseGroupClause where liftCompare = genericLiftCompare
instance Show1 NamespaceUseGroupClause where liftShowsPrec = genericLiftShowsPrec

data Namespace a = Namespace { namespaceName :: a, namespaceBody :: a}
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Namespace where liftEq = genericLiftEq
instance Ord1 Namespace where liftCompare = genericLiftCompare
instance Show1 Namespace where liftShowsPrec = genericLiftShowsPrec

data TraitDeclaration a = TraitDeclaration { traitName :: a, traitStatements :: [a] }
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 TraitDeclaration where liftEq = genericLiftEq
instance Ord1 TraitDeclaration where liftCompare = genericLiftCompare
instance Show1 TraitDeclaration where liftShowsPrec = genericLiftShowsPrec

data AliasAs a = AliasAs { aliasAsName  :: a, aliasAsModifier :: a, aliasAsClause :: a }
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 AliasAs where liftEq = genericLiftEq
instance Ord1 AliasAs where liftCompare = genericLiftCompare
instance Show1 AliasAs where liftShowsPrec = genericLiftShowsPrec

data InsteadOf a = InsteadOf a a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 InsteadOf where liftEq = genericLiftEq
instance Ord1 InsteadOf where liftCompare = genericLiftCompare
instance Show1 InsteadOf where liftShowsPrec = genericLiftShowsPrec

newtype TraitUseSpecification a = TraitUseSpecification [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 TraitUseSpecification where liftEq = genericLiftEq
instance Ord1 TraitUseSpecification where liftCompare = genericLiftCompare
instance Show1 TraitUseSpecification where liftShowsPrec = genericLiftShowsPrec

data TraitUseClause a = TraitUseClause [a] a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 TraitUseClause where liftEq = genericLiftEq
instance Ord1 TraitUseClause where liftCompare = genericLiftCompare
instance Show1 TraitUseClause where liftShowsPrec = genericLiftShowsPrec

data DestructorDeclaration a = DestructorDeclaration [a] a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 DestructorDeclaration where liftEq = genericLiftEq
instance Ord1 DestructorDeclaration where liftCompare = genericLiftCompare
instance Show1 DestructorDeclaration where liftShowsPrec = genericLiftShowsPrec

newtype Static a = Static ByteString
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Static where liftEq = genericLiftEq
instance Ord1 Static where liftCompare = genericLiftCompare
instance Show1 Static where liftShowsPrec = genericLiftShowsPrec

newtype ClassModifier a = ClassModifier ByteString
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ClassModifier where liftEq = genericLiftEq
instance Ord1 ClassModifier where liftCompare = genericLiftCompare
instance Show1 ClassModifier where liftShowsPrec = genericLiftShowsPrec

data ConstructorDeclaration a = ConstructorDeclaration [a] [a] a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 ConstructorDeclaration where liftEq = genericLiftEq
instance Ord1 ConstructorDeclaration where liftCompare = genericLiftCompare
instance Show1 ConstructorDeclaration where liftShowsPrec = genericLiftShowsPrec

data PropertyDeclaration a = PropertyDeclaration a [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 PropertyDeclaration where liftEq = genericLiftEq
instance Ord1 PropertyDeclaration where liftCompare = genericLiftCompare
instance Show1 PropertyDeclaration where liftShowsPrec = genericLiftShowsPrec

data PropertyModifier a = PropertyModifier a a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 PropertyModifier where liftEq = genericLiftEq
instance Ord1 PropertyModifier where liftCompare = genericLiftCompare
instance Show1 PropertyModifier where liftShowsPrec = genericLiftShowsPrec

data InterfaceDeclaration a = InterfaceDeclaration a a [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 InterfaceDeclaration where liftEq = genericLiftEq
instance Ord1 InterfaceDeclaration where liftCompare = genericLiftCompare
instance Show1 InterfaceDeclaration where liftShowsPrec = genericLiftShowsPrec

newtype InterfaceBaseClause a = InterfaceBaseClause [a]
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 InterfaceBaseClause where liftEq = genericLiftEq
instance Ord1 InterfaceBaseClause where liftCompare = genericLiftCompare
instance Show1 InterfaceBaseClause where liftShowsPrec = genericLiftShowsPrec

newtype Echo a = Echo a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Echo where liftEq = genericLiftEq
instance Ord1 Echo where liftCompare = genericLiftCompare
instance Show1 Echo where liftShowsPrec = genericLiftShowsPrec

newtype Unset a = Unset a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Unset where liftEq = genericLiftEq
instance Ord1 Unset where liftCompare = genericLiftCompare
instance Show1 Unset where liftShowsPrec = genericLiftShowsPrec

data Declare a = Declare a a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 Declare where liftEq = genericLiftEq
instance Ord1 Declare where liftCompare = genericLiftCompare
instance Show1 Declare where liftShowsPrec = genericLiftShowsPrec

data DeclareDirective a = DeclareDirective a
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 DeclareDirective where liftEq = genericLiftEq
instance Ord1 DeclareDirective where liftCompare = genericLiftCompare
instance Show1 DeclareDirective where liftShowsPrec = genericLiftShowsPrec

data LabeledStatement a = LabeledStatement { _labeledStatementIdentifier :: a }
  deriving (Diffable, Eq, Foldable, Functor, GAlign, Generic1, Mergeable, Ord, Show, Traversable)

instance Eq1 LabeledStatement where liftEq = genericLiftEq
instance Ord1 LabeledStatement where liftCompare = genericLiftCompare
instance Show1 LabeledStatement where liftShowsPrec = genericLiftShowsPrec