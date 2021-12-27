class Validator < ActiveModel::Validator
    def validate(record)
      if record.name == 'Math'
        record.errors.add :base, "This Book is about Math"
      end
    end
  end